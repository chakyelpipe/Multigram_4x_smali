.class Lorg/telegram/ui/ArticleViewer$47;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field final synthetic val$object:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 7705
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$47;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$47;->val$object:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 7708
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 7709
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$47;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7711
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$47;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setVisibility(I)V

    .line 7712
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$47;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1400(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7713
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$47;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I
    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer;->access$14102(Lorg/telegram/ui/ArticleViewer;I)I

    .line 7714
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$47;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$47;->val$object:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    # invokes: Lorg/telegram/ui/ArticleViewer;->onPhotoClosed(Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$14900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    .line 7715
    return-void
.end method
