#ifndef DAI_MAKAI_MURA_GAMEMAP_H
#define DAI_MAKAI_MURA_GAMEMAP_H

#include <SFML/Graphics.hpp>
#include <iostream>
#include <vector>
#include "./ItemModel.h"

using namespace std;
using namespace sf;

class GameMap
{

private:
    vector<ItemModel *> mItems;
    vector<ItemModel *> mCharacterStartPos;

public:
    GameMap()
    {
        initialize();
    }

    ~GameMap()
    {

    }

    void initialize()
    {
        initializeStartPos();
        initializeLvl1();
    }

    void addStartPos(int mLvl, int mStartPosX, int mStartPosY)
    {
        ItemModel *mItemModel;

        mStartPosY *= -1;
        mItemModel = new ItemModel(
                mLvl,
                Vector2i(mStartPosX, mStartPosY)
        );
        mCharacterStartPos.push_back(mItemModel);
    }

    void initializeStartPos()
    {
        addStartPos(1, 50, 50);
    }

    Vector2f getCharacterStartPos(int mLvl)
    {
        Vector2f mStartPosOfLvl = Vector2f(0.0f, 0.0f);
        for (ItemModel *mStartPos : mCharacterStartPos)
        {
            if (mStartPos->getLvl() == mLvl)
            {
                mStartPosOfLvl.x = mStartPos->getStartPos().x;
                mStartPosOfLvl.y = mStartPos->getStartPos().y;
            }
        }

        return mStartPosOfLvl;
    }

    void addItem(int mLvl, int mStartPosX, int mStartPosY, int mSizeW, int mSizeH, int mType)
    {
        ItemModel *mItemModel;

        mStartPosY *= -1;
        mItemModel = new ItemModel(
                mLvl,
                Vector2i(mStartPosX, mStartPosY - mSizeH),
                Vector2i(mSizeW, mSizeH),
                mType
        );
        mItems.push_back(mItemModel);
    }

    void initializeLvl1()
    {

        //blocks
        addItem(1, 0, 0, 800, 50, 0);
        addItem(1, 250, 150, 100, 20, 0);
        addItem(1, 375, 250, 100, 20, 0);
        addItem(1, 250, 350, 100, 20, 0);
        addItem(1, 375, 450, 425, 20, 0);

        //portals
        addItem(1, 790, 470, 10, 120, 1);

    }

    vector<ItemModel *> getItemsByLvl(int mLvl)
    {
        vector < ItemModel * > lvlItems;
        for (ItemModel *mItem : mItems)
        {
            if (mItem->getLvl() == mLvl && mItem->getType() == 0)
            {
                lvlItems.push_back(mItem);
            }
        }

        return lvlItems;
    }

    vector<ItemModel *> getEndPortalByLvl(int mLvl)
    {
        vector < ItemModel * > endPortals;

        for (ItemModel *mItem : mItems)
        {
            if (mItem->getLvl() == mLvl && mItem->getType() == 1)
            {
                endPortals.push_back(mItem);
            }
        }

        return endPortals;
    }

    int getNearestGroundLvl(int mLvl, Vector2f mSpriteLocStart, Vector2f mSpriteLocSize, int mGameOffsetY = 0)
    {
        int mNearestGroundLvl = -1;
        int characterPosY = mSpriteLocStart.y;
        int characterPosSX = mSpriteLocStart.x + 70;
        int characterPosEX = mSpriteLocStart.x + mSpriteLocSize.x - 70;

        vector < ItemModel * > mLvlItems = getItemsByLvl(mLvl);

        for (ItemModel *mItem : mLvlItems)
        {
            int itemPosSX = mItem->getStartPos().x;
            int itemPosEX = mItem->getSize().x + mItem->getStartPos().x;
            cout << mItem->getStartPos().y << ' ' <<characterPosY<<'\n';
            if (mItem->getStartPos().y <= characterPosY && mNearestGroundLvl == -1)
            {
                if (itemPosSX <= characterPosSX && itemPosEX >= characterPosEX)
                {
                    mNearestGroundLvl = mItem->getStartPos().y;
                }
            } else if (mNearestGroundLvl != -1 && mItem->getStartPos().y <= characterPosY &&
                       mNearestGroundLvl < mItem->getStartPos().y)
            {
                if (itemPosSX <= characterPosSX && itemPosEX >= characterPosEX)
                {
                    mNearestGroundLvl = mItem->getStartPos().y;
                }
            }
        }
        cout << characterPosY << ' ';
//        cout<<mNearestGroundLvl;
        cout << '\n';
//        system("pause");
        return mNearestGroundLvl;
    }

};

#endif //DAI_MAKAI_MURA_GAMEMAP_H
