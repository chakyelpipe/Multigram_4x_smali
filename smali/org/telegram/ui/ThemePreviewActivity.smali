.class public Lorg/telegram/ui/ThemePreviewActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ThemePreviewActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;,
        Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;
    }
.end annotation


# instance fields
.field private actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

.field private applied:Z

.field private applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

.field private dotsContainer:Landroid/view/View;

.field private floatingButton:Landroid/widget/ImageView;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listView2:Lorg/telegram/ui/Components/RecyclerListView;

.field private messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

.field private page1:Landroid/widget/FrameLayout;

.field private page2:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private previousPlusValue:Z

.field private themeFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "themeInfo"    # Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 88
    iput-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->swipeBackEnabled:Z

    .line 89
    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 90
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeFile:Ljava/io/File;

    .line 91
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->previousPlusValue:Z

    .line 92
    sput-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    .line 93
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/ThemePreviewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->previousPlusValue:Z

    return p1
.end method

.method static synthetic access$1902(Lorg/telegram/ui/ThemePreviewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applied:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemePreviewActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    .line 98
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v19

    .line 99
    .local v19, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v4, 0x0

    const v5, 0x7f0200c6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/ThemePreviewActivity$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v18

    .line 120
    .local v18, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    const-string/jumbo v5, "Search"

    const v6, 0x7f07061c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "ThemePreview"

    const v6, 0x7f0706db

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity$2;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    .line 155
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v6, -0x1

    const/high16 v7, -0x40000000    # -2.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x33

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 168
    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const-string/jumbo v5, "chats_actionBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "chats_actionPressedBackground"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 169
    .local v16, "drawable":Landroid/graphics/drawable/Drawable;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 171
    .local v21, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x1000000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 172
    new-instance v14, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1, v4, v5}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 173
    .local v14, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v14, v4, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 174
    move-object/from16 v16, v14

    .line 176
    .end local v14    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v21    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v6, "chats_actionIcon"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    const v5, 0x7f0200a3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 180
    new-instance v11, Landroid/animation/StateListAnimator;

    invoke-direct {v11}, Landroid/animation/StateListAnimator;-><init>()V

    .line 181
    .local v11, "animator":Landroid/animation/StateListAnimator;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "translationZ"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 182
    const/4 v4, 0x0

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "translationZ"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/ThemePreviewActivity$3;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 192
    .end local v11    # "animator":Landroid/animation/StateListAnimator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    const/16 v4, 0x38

    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_4

    const/high16 v5, 0x42600000    # 56.0f

    :goto_2
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x3

    :goto_3
    or-int/lit8 v6, v6, 0x50

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_6

    const/high16 v7, 0x41600000    # 14.0f

    :goto_4
    const/4 v8, 0x0

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    :goto_5
    const/high16 v10, 0x41600000    # 14.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 197
    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity$4;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/ThemePreviewActivity;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "Reinhardt"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0xe10

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatDateOnline(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v6, -0x1

    const/high16 v7, -0x40000000    # -2.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    :goto_6
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x33

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 245
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->fragmentView:Landroid/view/View;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity;->fragmentView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/FrameLayout;

    .line 248
    .local v17, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v22, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 249
    .local v22, "viewPager":Landroid/support/v4/view/ViewPager;
    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemePreviewActivity$5;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 265
    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemePreviewActivity$6;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 301
    const-string/jumbo v4, "actionBarDefault"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->setViewPagerEdgeEffectColor(Landroid/support/v4/view/ViewPager;I)V

    .line 302
    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    new-instance v20, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 305
    .local v20, "shadow":Landroid/view/View;
    const v4, 0x7f0200b8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 306
    const/4 v4, -0x1

    const/high16 v5, 0x40400000    # 3.0f

    const/16 v6, 0x53

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    new-instance v12, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 309
    .local v12, "bottomLayout":Landroid/widget/FrameLayout;
    const/4 v4, -0x1

    invoke-virtual {v12, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 310
    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/ui/ThemePreviewActivity$7;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Landroid/support/v4/view/ViewPager;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    const/16 v5, 0x16

    const/16 v6, 0x8

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 328
    .local v13, "cancelButton":Landroid/widget/TextView;
    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v13, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 329
    const v4, -0xe65818

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    const/16 v4, 0x11

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 331
    const/high16 v4, 0x2f000000

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    const/high16 v4, 0x41e80000    # 29.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x41e80000    # 29.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v13, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 333
    const-string/jumbo v4, "Cancel"

    const v5, 0x7f070105

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 335
    const/4 v4, -0x2

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v13, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemePreviewActivity$8;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 346
    .local v15, "doneButton":Landroid/widget/TextView;
    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v15, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 347
    const v4, -0xe65818

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    const/16 v4, 0x11

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 349
    const/high16 v4, 0x2f000000

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    const/high16 v4, 0x41e80000    # 29.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x41e80000    # 29.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v15, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 351
    const-string/jumbo v4, "ApplyTheme"

    const v5, 0x7f070080

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 353
    const/4 v4, -0x2

    const/4 v5, -0x1

    const/16 v6, 0x35

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v15, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemePreviewActivity$9;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 162
    .end local v12    # "bottomLayout":Landroid/widget/FrameLayout;
    .end local v13    # "cancelButton":Landroid/widget/TextView;
    .end local v15    # "doneButton":Landroid/widget/TextView;
    .end local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v20    # "shadow":Landroid/view/View;
    .end local v22    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_2
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 192
    .restart local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/16 v4, 0x3c

    goto/16 :goto_1

    :cond_4
    const/high16 v5, 0x42700000    # 60.0f

    goto/16 :goto_2

    :cond_5
    const/4 v6, 0x5

    goto/16 :goto_3

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_7
    const/high16 v9, 0x41600000    # 14.0f

    goto/16 :goto_5

    .line 239
    :cond_8
    const/4 v4, 0x2

    goto/16 :goto_6
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 403
    sget v4, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v4, :cond_0

    .line 404
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v4, :cond_1

    .line 416
    :cond_0
    return-void

    .line 407
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 408
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 409
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 410
    .local v2, "child":Landroid/view/View;
    instance-of v4, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 411
    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    .line 412
    .local v1, "cell":Lorg/telegram/ui/Cells/DialogCell;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    .line 408
    .end local v1    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPreviousTheme()V

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 397
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 372
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 377
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->previousPlusValue:Z

    sput-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    .line 378
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 379
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 380
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->notifyDataSetChanged()V

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->notifyDataSetChanged()V

    .line 391
    :cond_1
    return-void
.end method
