.class Lorg/telegram/messenger/MediaController$5;
.super Ljava/util/TimerTask;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 833
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$5;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 837
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/MediaController$5$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$5$1;-><init>(Lorg/telegram/messenger/MediaController$5;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 880
    monitor-exit v1

    .line 881
    return-void

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
