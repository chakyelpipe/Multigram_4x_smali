.class Lorg/telegram/ui/PhotoViewer$50$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$50;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$50;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$50;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$50;

    .prologue
    .line 4909
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$50$1;->this$1:Lorg/telegram/ui/PhotoViewer$50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4912
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 4913
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$50$1;->this$1:Lorg/telegram/ui/PhotoViewer$50;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4914
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$50$1;->this$1:Lorg/telegram/ui/PhotoViewer$50;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4915
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$50$1;->this$1:Lorg/telegram/ui/PhotoViewer$50;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$11802(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4917
    :cond_0
    return-void
.end method
