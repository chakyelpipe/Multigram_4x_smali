.class Lorg/telegram/messenger/MessagesController$21;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->getNewDeleteTask(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$channelId:I

.field final synthetic val$oldTask:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1627
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$21;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$21;->val$oldTask:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/MessagesController$21;->val$channelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1630
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$21;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$3002(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 1631
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$21;->val$oldTask:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/messenger/MessagesController$21;->val$channelId:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getNewTask(Ljava/util/ArrayList;I)V

    .line 1632
    return-void
.end method
