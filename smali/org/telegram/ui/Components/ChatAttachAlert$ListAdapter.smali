.class Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field gd:Landroid/graphics/drawable/GradientDrawable;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 1952
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1951
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->gd:Landroid/graphics/drawable/GradientDrawable;

    .line 1953
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->mContext:Landroid/content/Context;

    .line 1954
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "theme"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1956
    .local v3, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "chatAttachBGGradient"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1957
    .local v4, "val":I
    if-lez v4, :cond_0

    .line 1959
    packed-switch v4, :pswitch_data_0

    .line 1970
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1972
    .local v1, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_0
    const-string/jumbo v5, "chatAttachBGGradientColor"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1973
    .local v2, "gradColor":I
    const/4 v5, 0x2

    new-array v0, v5, [I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    aput v5, v0, v7

    const/4 v5, 0x1

    aput v2, v0, v5

    .line 1974
    .local v0, "colors":[I
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5, v1, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->gd:Landroid/graphics/drawable/GradientDrawable;

    .line 1976
    .end local v0    # "colors":[I
    .end local v1    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v2    # "gradColor":I
    :cond_0
    return-void

    .line 1961
    :pswitch_0
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1962
    .restart local v1    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 1964
    .end local v1    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1965
    .restart local v1    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 1967
    .end local v1    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1968
    .restart local v1    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 1959
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 2047
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2052
    packed-switch p1, :pswitch_data_0

    .line 2058
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 2054
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2056
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2052
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2042
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x4

    .line 2023
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    .line 2024
    add-int/lit8 p2, p2, -0x2

    .line 2025
    mul-int/lit8 p2, p2, 0x4

    .line 2026
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    .line 2027
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 2028
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 2029
    .local v1, "child":Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;
    add-int v3, p2, v0

    sget-object v4, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 2030
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setVisibility(I)V

    .line 2027
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2032
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setVisibility(I)V

    .line 2033
    add-int v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setTag(Ljava/lang/Object;)V

    .line 2034
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    add-int v5, p2, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    .line 2038
    .end local v0    # "a":I
    .end local v1    # "child":Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;
    .end local v2    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v6, -0x1

    .line 1981
    packed-switch p2, :pswitch_data_0

    .line 1993
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter$1;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;Landroid/content/Context;)V

    .line 2004
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 2005
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2004
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1983
    .end local v0    # "a":I
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :pswitch_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 2012
    .local v2, "view":Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->gd:Landroid/graphics/drawable/GradientDrawable;

    if-nez v3, :cond_1

    .line 2013
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2018
    :goto_2
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v3

    .line 1986
    .end local v2    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1987
    .restart local v1    # "frameLayout":Landroid/widget/FrameLayout;
    const v3, -0xf0f10

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1988
    new-instance v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1989
    move-object v2, v1

    .line 1990
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_1

    .line 2007
    .end local v2    # "view":Landroid/view/View;
    .restart local v0    # "a":I
    :cond_0
    move-object v2, v1

    .line 2008
    .restart local v2    # "view":Landroid/view/View;
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2015
    .end local v0    # "a":I
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->gd:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1981
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
