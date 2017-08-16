.class public Lorg/telegram/ui/Components/ChatAvatarContainer;
.super Landroid/widget/FrameLayout;
.source "ChatAvatarContainer.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private onlineCount:I

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

.field private subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private timeItem:Landroid/widget/ImageView;

.field private timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .param p3, "needTime"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v9, 0x3

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v2, 0x5

    new-array v2, v2, [Lorg/telegram/ui/Components/StatusDrawable;

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    .line 45
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 47
    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 51
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 53
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 54
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 55
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 57
    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 58
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "actionBarDefaultTitle"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 59
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0x12

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 60
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 61
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 63
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 65
    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 66
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "actionBarDefaultSubtitle"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 67
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatStatusColor:I

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 68
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 69
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 70
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 72
    if-eqz p3, :cond_1

    .line 73
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    .line 74
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 75
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/TimerDrawable;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Components/TimerDrawable;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->addView(Landroid/view/View;)V

    .line 78
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/ChatAvatarContainer$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$1;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_3

    .line 87
    new-instance v2, Lorg/telegram/ui/Components/ChatAvatarContainer$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$2;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 116
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v5, Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/TypingDotsDrawable;-><init>()V

    aput-object v5, v2, v4

    .line 117
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v5, Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/RecordStatusDrawable;-><init>()V

    aput-object v5, v2, v3

    .line 118
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    const/4 v5, 0x2

    new-instance v6, Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/SendingFileDrawable;-><init>()V

    aput-object v6, v2, v5

    .line 119
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v5, Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/PlayingGameDrawable;-><init>()V

    aput-object v5, v2, v9

    .line 120
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    const/4 v5, 0x4

    new-instance v6, Lorg/telegram/ui/Components/RoundStatusDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/RoundStatusDrawable;-><init>()V

    aput-object v6, v2, v5

    .line 121
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 122
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v5, v2, v0

    if-eqz v1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/StatusDrawable;->setIsChat(Z)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 122
    goto :goto_1

    .line 125
    .end local v0    # "a":I
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAvatarContainer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAvatarContainer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method private setTypingAnimation(Z)V
    .locals 6
    .param p1, "start"    # Z

    .prologue
    .line 221
    if-eqz p1, :cond_2

    .line 223
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 224
    .local v2, "type":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 226
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 227
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/telegram/ui/Components/StatusDrawable;->start()V

    .line 225
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/telegram/ui/Components/StatusDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 232
    .end local v0    # "a":I
    .end local v2    # "type":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 236
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 238
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/telegram/ui/Components/StatusDrawable;->stop()V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public checkAndUpdateAvatar()V
    .locals 7

    .prologue
    .line 345
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v4, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const/4 v1, 0x0

    .line 349
    .local v1, "newPhoto":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 350
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 351
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_5

    .line 352
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_2

    .line 353
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 355
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 362
    :cond_3
    :goto_1
    const-string/jumbo v4, "chatHeaderAvatarRadius"

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 363
    .local v2, "radius":I
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v4, :cond_4

    .line 364
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v5, "50_50"

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v1, v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 368
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setRadius(I)V

    goto :goto_0

    .line 356
    .end local v2    # "radius":I
    :cond_5
    if-eqz v0, :cond_3

    .line 357
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v4, :cond_6

    .line 358
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 360
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_1
.end method

.method public getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getTimeItem()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hideTimeItem()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v5, 0x42280000    # 42.0f

    const v7, 0x3fa66666    # 1.3f

    const/high16 v9, 0x41c00000    # 24.0f

    const/high16 v8, 0x42780000    # 62.0f

    .line 142
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    .line 143
    .local v0, "actionBarHeight":I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v3, v2, 0x2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    add-int v1, v3, v2

    .line 144
    .local v1, "viewTop":I
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->layout(IIII)V

    .line 145
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 146
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x42440000    # 49.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 149
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 150
    return-void

    .line 143
    .end local v1    # "viewTop":I
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x42280000    # 42.0f

    const/high16 v7, 0x42080000    # 34.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 130
    .local v1, "width":I
    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v0, v1, v2

    .line 131
    .local v0, "availableWidth":I
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->measure(II)V

    .line 132
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 133
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 134
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 137
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setMeasuredDimension(II)V

    .line 138
    return-void
.end method

.method public setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "newPhoto":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 338
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 339
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 342
    :cond_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 214
    return-void
.end method

.method public setSubtitleSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 218
    return-void
.end method

.method public setTime(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TimerDrawable;->setTime(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 206
    return-void
.end method

.method public setTitleIcons(II)V
    .locals 1
    .param p1, "leftIcon"    # I
    .param p2, "rightIcon"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(I)V

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(I)V

    .line 176
    return-void
.end method

.method public setTitleIcons(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "leftIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "rightIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    return-void
.end method

.method public setTitleSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 210
    return-void
.end method

.method public showTimeItem()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateOnlineCount()V
    .locals 7

    .prologue
    .line 372
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v5, :cond_1

    .line 390
    :cond_0
    return-void

    .line 375
    :cond_1
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 376
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    .line 377
    .local v2, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    if-eqz v2, :cond_0

    .line 380
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    .line 381
    .local v1, "currentTime":I
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-nez v5, :cond_2

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v5, :cond_0

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_0

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_0

    .line 382
    :cond_2
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 383
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 384
    .local v3, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 385
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_4

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gt v5, v1, :cond_3

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v5, v6, :cond_4

    :cond_3
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/16 v6, 0x2710

    if-le v5, v6, :cond_4

    .line 386
    iget v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 382
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateSubtitle()V
    .locals 18

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v12, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 248
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 249
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v13}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 250
    .local v7, "printString":Ljava/lang/CharSequence;
    if-eqz v7, :cond_2

    .line 251
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "..."

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, ""

    aput-object v15, v13, v14

    invoke-static {v7, v12, v13}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 253
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_15

    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v12, :cond_15

    .line 254
    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    .line 255
    if-eqz v2, :cond_e

    .line 256
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    .line 257
    .local v4, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 258
    if-eqz v4, :cond_6

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v12, :cond_6

    .line 259
    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v12, :cond_5

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v13, 0xc8

    if-gt v12, v13, :cond_5

    .line 260
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v12, :cond_4

    .line 261
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "%s, %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "Members"

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "OnlineCount"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 263
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "Members"

    iget v14, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 266
    :cond_5
    const/4 v12, 0x1

    new-array v8, v12, [I

    .line 267
    .local v8, "result":[I
    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v12, v8}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "shortNumber":Ljava/lang/String;
    const-string/jumbo v12, "Members"

    const/4 v13, 0x0

    aget v13, v8, v13

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v8, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 269
    .local v10, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v12, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 272
    .end local v8    # "result":[I
    .end local v9    # "shortNumber":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    :cond_6
    iget-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v12, :cond_7

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "Loading"

    const v14, 0x7f0703eb

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 275
    :cond_7
    iget v12, v2, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_8

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "ChannelPublic"

    const v14, 0x7f070160

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 278
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "ChannelPrivate"

    const v14, 0x7f07015d

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 283
    :cond_9
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isKickedFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "YouWereKicked"

    const v14, 0x7f070791

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 285
    :cond_a
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 286
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "YouLeft"

    const v14, 0x7f070790

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 288
    :cond_b
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 289
    .local v3, "count":I
    if-eqz v4, :cond_c

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v12, :cond_c

    .line 290
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 292
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_d

    if-eqz v3, :cond_d

    .line 293
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "%s, %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "Members"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "OnlineCount"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 295
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v13, "Members"

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 299
    .end local v3    # "count":I
    .end local v4    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_e
    if-eqz v11, :cond_0

    .line 300
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 301
    .local v6, "newUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_f

    .line 302
    move-object v11, v6

    .line 305
    :cond_f
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v13

    if-ne v12, v13, :cond_10

    .line 306
    const-string/jumbo v12, "ChatYourSelf"

    const v13, 0x7f070182

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "newStatus":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v12, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v12, :cond_0

    .line 317
    const-string/jumbo v12, "Online"

    const v13, 0x7f0704f9

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 318
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->chatOnlineColor:I

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 307
    .end local v5    # "newStatus":Ljava/lang/String;
    :cond_10
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v13, 0x514c8

    if-eq v12, v13, :cond_11

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v13, 0xbdb28

    if-ne v12, v13, :cond_12

    .line 308
    :cond_11
    const-string/jumbo v12, "ServiceNotifications"

    const v13, 0x7f07065c

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "newStatus":Ljava/lang/String;
    goto :goto_1

    .line 309
    .end local v5    # "newStatus":Ljava/lang/String;
    :cond_12
    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v12, :cond_13

    .line 310
    const-string/jumbo v12, "Bot"

    const v13, 0x7f0700d9

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "newStatus":Ljava/lang/String;
    goto :goto_1

    .line 312
    .end local v5    # "newStatus":Ljava/lang/String;
    :cond_13
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "newStatus":Ljava/lang/String;
    goto :goto_1

    .line 320
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->chatStatusColor:I

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 325
    .end local v5    # "newStatus":Ljava/lang/String;
    .end local v6    # "newUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v12, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    .line 328
    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->chatTypingColor:I

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
