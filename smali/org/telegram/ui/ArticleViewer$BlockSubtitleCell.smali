.class Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockSubtitleCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

.field private lastCreatedWidth:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 5516
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 5517
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5511
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textX:I

    .line 5512
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textY:I

    .line 5518
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 5553
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-nez v0, :cond_1

    .line 5563
    :cond_0
    :goto_0
    return-void

    .line 5556
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 5557
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5558
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5559
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$9300(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 5560
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5561
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 5533
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 5534
    .local v1, "width":I
    const/4 v0, 0x0

    .line 5536
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v2, :cond_1

    .line 5537
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->lastCreatedWidth:I

    if-eq v2, v1, :cond_0

    .line 5538
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ArticleViewer;->access$9200(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textLayout:Landroid/text/StaticLayout;

    .line 5539
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_0

    .line 5540
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 5548
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->setMeasuredDimension(II)V

    .line 5549
    return-void

    .line 5545
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5528
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$9100(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;)V
    .locals 1
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    .prologue
    .line 5521
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    .line 5522
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->lastCreatedWidth:I

    .line 5523
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->requestLayout()V

    .line 5524
    return-void
.end method
