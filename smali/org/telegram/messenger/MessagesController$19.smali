.class Lorg/telegram/messenger/MessagesController$19;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->didAddedNewTask(ILandroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$minDate:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1610
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$19;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$19;->val$minDate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1613
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$19;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$2900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$19;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$3000(Lorg/telegram/messenger/MessagesController;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$19;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$3100(Lorg/telegram/messenger/MessagesController;)I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MessagesController$19;->val$minDate:I

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$19;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$3100(Lorg/telegram/messenger/MessagesController;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1614
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$19;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getNewDeleteTask(Ljava/util/ArrayList;I)V

    .line 1616
    :cond_2
    return-void
.end method
