.class Lorg/telegram/messenger/MessagesController$59$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$59;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$59;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$59;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$59;

    .prologue
    .line 3370
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$59$1;->this$1:Lorg/telegram/messenger/MessagesController$59;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3373
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$59$1;->this$1:Lorg/telegram/messenger/MessagesController$59;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$59;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$59$1;->this$1:Lorg/telegram/messenger/MessagesController$59;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$59;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3374
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$59$1;->this$1:Lorg/telegram/messenger/MessagesController$59;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$59;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v2, v0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 3375
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$59$1;->this$1:Lorg/telegram/messenger/MessagesController$59;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$59;->val$resetEnd:Z

    if-eqz v0, :cond_0

    .line 3376
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$59$1;->this$1:Lorg/telegram/messenger/MessagesController$59;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$59;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 3377
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$59$1;->this$1:Lorg/telegram/messenger/MessagesController$59;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$59;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v2, v0, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    .line 3384
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3385
    return-void

    .line 3378
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 3379
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$59$1;->this$1:Lorg/telegram/messenger/MessagesController$59;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$59;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 3380
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$59$1;->this$1:Lorg/telegram/messenger/MessagesController$59;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$59;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v3, v0, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    goto :goto_0

    .line 3382
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$59$1;->this$1:Lorg/telegram/messenger/MessagesController$59;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$59;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$59$1;->this$1:Lorg/telegram/messenger/MessagesController$59;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$59;->val$count:I

    invoke-virtual {v0, v2, v1, v2}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    goto :goto_0
.end method
