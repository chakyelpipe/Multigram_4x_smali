.class Lorg/telegram/messenger/MediaController$25$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController$25;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$25;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController$25;

    .prologue
    .line 3368
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$25$2;->this$0:Lorg/telegram/messenger/MediaController$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3372
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$25$2;->this$0:Lorg/telegram/messenger/MediaController$25;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$25;->val$finalProgress:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3376
    :goto_0
    return-void

    .line 3373
    :catch_0
    move-exception v0

    .line 3374
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
