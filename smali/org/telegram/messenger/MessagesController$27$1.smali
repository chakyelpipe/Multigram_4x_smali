.class Lorg/telegram/messenger/MessagesController$27$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$27;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController$27;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$27;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController$27;

    .prologue
    .line 1796
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$27$1;->this$0:Lorg/telegram/messenger/MessagesController$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1799
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$27$1;->this$0:Lorg/telegram/messenger/MessagesController$27;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$27;->val$chatId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 1800
    return-void
.end method
