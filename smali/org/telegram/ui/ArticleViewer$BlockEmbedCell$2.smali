.class Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;
.super Landroid/webkit/WebChromeClient;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .prologue
    .line 4699
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 2

    .prologue
    .line 4720
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 4721
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$10700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4730
    :goto_0
    return-void

    .line 4724
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4725
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$10700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4726
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$10800(Lorg/telegram/ui/ArticleViewer;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$10800(Lorg/telegram/ui/ArticleViewer;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".chromium."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4727
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$10800(Lorg/telegram/ui/ArticleViewer;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 4729
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$10702(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 4703
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 4704
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 4708
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$10700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4709
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 4716
    :goto_0
    return-void

    .line 4712
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;
    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer;->access$10702(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Landroid/view/View;

    .line 4713
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4714
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4715
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0, p2}, Lorg/telegram/ui/ArticleViewer;->access$10802(Lorg/telegram/ui/ArticleViewer;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    goto :goto_0
.end method
