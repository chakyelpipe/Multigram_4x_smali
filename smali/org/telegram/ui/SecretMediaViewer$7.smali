.class Lorg/telegram/ui/SecretMediaViewer$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecretMediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->openMedia(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 867
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$7;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 870
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$7;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$2300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$7;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$2300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$7;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->access$2302(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 874
    :cond_0
    return-void
.end method
