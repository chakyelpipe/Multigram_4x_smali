.class Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrendingGridAdapter"
.end annotation


# instance fields
.field private cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private positionsToSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private sets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private stickersPerRow:I

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private totalItems:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2065
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2060
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->cache:Ljava/util/HashMap;

    .line 2061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->sets:Ljava/util/ArrayList;

    .line 2062
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->positionsToSets:Ljava/util/HashMap;

    .line 2066
    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->context:Landroid/content/Context;

    .line 2067
    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    .prologue
    .line 2056
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->cache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    .prologue
    .line 2056
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    .prologue
    .line 2056
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->stickersPerRow:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    .prologue
    .line 2056
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->positionsToSets:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 2075
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 2071
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2085
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2086
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 2087
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_0

    .line 2088
    const/4 v1, 0x0

    .line 2093
    :goto_0
    return v1

    .line 2090
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 2093
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2080
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 14

    .prologue
    const/high16 v12, 0x43a00000    # 320.0f

    .line 2173
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/EmojiView;->getMeasuredWidth()I

    move-result v10

    .line 2174
    .local v10, "width":I
    if-nez v10, :cond_1

    .line 2175
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2176
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v11, Landroid/graphics/Point;->x:I

    .line 2177
    .local v8, "smallSide":I
    mul-int/lit8 v11, v8, 0x23

    div-int/lit8 v3, v11, 0x64

    .line 2178
    .local v3, "leftSide":I
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 2179
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 2181
    :cond_0
    sub-int v10, v8, v3

    .line 2186
    .end local v3    # "leftSide":I
    .end local v8    # "smallSide":I
    :cond_1
    :goto_0
    const/high16 v11, 0x42900000    # 72.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    div-int v11, v10, v11

    iput v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->stickersPerRow:I

    .line 2187
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView;->access$6500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v11

    iget v12, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->stickersPerRow:I

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2188
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView;->access$6600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2228
    :goto_1
    return-void

    .line 2183
    :cond_2
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v11, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 2191
    :cond_3
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->cache:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 2192
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->positionsToSets:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 2193
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->sets:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2194
    const/4 v11, 0x0

    iput v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    .line 2195
    const/4 v4, 0x0

    .line 2197
    .local v4, "num":I
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v7

    .line 2199
    .local v7, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_9

    .line 2200
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 2201
    .local v6, "pack":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v12, v13}, Lorg/telegram/messenger/query/StickersQuery;->isStickerPackInstalled(J)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v11, :cond_5

    .line 2199
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2204
    :cond_5
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->sets:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2205
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->positionsToSets:Ljava/util/HashMap;

    iget v12, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->cache:Ljava/util/HashMap;

    iget v12, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "num":I
    .local v5, "num":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2207
    iget v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    iget v12, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->stickersPerRow:I

    div-int v9, v11, v12

    .line 2209
    .local v9, "startRow":I
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 2210
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->stickersPerRow:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    .line 2211
    .local v2, "count":I
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_4
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_7

    .line 2212
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->cache:Ljava/util/HashMap;

    iget v12, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    add-int/2addr v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2215
    .end local v1    # "b":I
    .end local v2    # "count":I
    :cond_6
    const/4 v2, 0x1

    .line 2216
    .restart local v2    # "count":I
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->cache:Ljava/util/HashMap;

    iget v12, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_5
    iget v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->stickersPerRow:I

    mul-int/2addr v11, v2

    if-ge v1, v11, :cond_8

    .line 2219
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->positionsToSets:Ljava/util/HashMap;

    iget v12, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    add-int/2addr v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2221
    :cond_8
    iget v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    iget v12, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->stickersPerRow:I

    mul-int/2addr v12, v2

    add-int/2addr v11, v12

    iput v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    move v4, v5

    .end local v5    # "num":I
    .restart local v4    # "num":I
    goto/16 :goto_3

    .line 2223
    .end local v1    # "b":I
    .end local v2    # "count":I
    .end local v6    # "pack":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .end local v9    # "startRow":I
    :cond_9
    iget v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I

    if-eqz v11, :cond_a

    .line 2224
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/EmojiView;->access$6602(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 2225
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getFeaturesStickersHashWithoutUnread()I

    move-result v12

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/EmojiView;->access$6702(Lorg/telegram/ui/Components/EmojiView;I)I

    .line 2227
    :cond_a
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2138
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 2169
    :goto_0
    return-void

    .line 2140
    :pswitch_0
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2141
    .local v3, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v7, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v7, v3, v9}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto :goto_0

    .line 2144
    .end local v3    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    :pswitch_1
    iget-object v7, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v8, 0x42a40000    # 82.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    .line 2147
    :pswitch_2
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v6

    .line 2148
    .local v6, "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v10, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->sets:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 2149
    .local v4, "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    if-eqz v6, :cond_5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v8

    .line 2150
    .local v5, "unread":Z
    :goto_1
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .line 2151
    .local v0, "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    .line 2152
    if-eqz v5, :cond_0

    .line 2153
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Lorg/telegram/messenger/query/StickersQuery;->markFaturedStickersByIdAsRead(J)V

    .line 2155
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2156
    .local v1, "installing":Z
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 2157
    .local v2, "removing":Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 2158
    :cond_1
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2159
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    const/4 v1, 0x0

    .line 2166
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    move v9, v8

    :cond_4
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setDrawProgress(Z)V

    goto/16 :goto_0

    .end local v0    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .end local v1    # "installing":Z
    .end local v2    # "removing":Z
    .end local v5    # "unread":Z
    :cond_5
    move v5, v9

    .line 2149
    goto :goto_1

    .line 2161
    .restart local v0    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .restart local v1    # "installing":Z
    .restart local v2    # "removing":Z
    .restart local v5    # "unread":Z
    :cond_6
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2162
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    const/4 v2, 0x0

    goto :goto_2

    .line 2138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 2098
    const/4 v0, 0x0

    .line 2099
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 2133
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 2101
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$1;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$1;-><init>(Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;Landroid/content/Context;)V

    .line 2106
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 2108
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/EmptyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .line 2109
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 2111
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->context:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "view":Landroid/view/View;
    move-object v1, v0

    .line 2112
    check-cast v1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$2;-><init>(Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2099
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
