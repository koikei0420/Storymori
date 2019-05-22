# StoryMori port planning

- Check Point 1 : user, stories, pagesモデルを作成する
- Check Point 2 : saveStory End-pointを実装
  - route: ｀POST /api/stories｀
- Check Point 3 : getStory End-pointを実装
  - route: ｀GET /api/stories｀
- Check Point 4 : getStoryとsaveStoryのテストを実装
  - (save) データベースに登録できるか
  - (save, get) responseが正しいか
- Check Point 5 : savePage End-pointを実装
  - route: ｀POST /api/stories/:storyId/pages/:pageId/next｀
- Check Point 6 : getPage End-pointを実装
  - route: ｀GET /api/stories/:storyId/pages/:pageId｀
- Check Point 7 : getPageとsavePageのテストを実装
  - (save) データベースに登録できるか
  - (save, get) responseが正しいか