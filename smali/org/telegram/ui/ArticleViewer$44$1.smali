.class Lorg/telegram/ui/ArticleViewer$44$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$44;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$44;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$44;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$44;

    .prologue
    .line 7548
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$44$1;->this$1:Lorg/telegram/ui/ArticleViewer$44;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7551
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 7552
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$44$1;->this$1:Lorg/telegram/ui/ArticleViewer$44;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$44;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$14600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7553
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$44$1;->this$1:Lorg/telegram/ui/ArticleViewer$44;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$44;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$14600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7554
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$44$1;->this$1:Lorg/telegram/ui/ArticleViewer$44;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$44;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$14602(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 7556
    :cond_0
    return-void
.end method
