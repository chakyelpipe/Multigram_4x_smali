.class Lorg/telegram/messenger/MessagesController$117$3;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$117;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$117;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$117;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$117;

    .prologue
    .line 7831
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$117$3;->this$1:Lorg/telegram/messenger/MessagesController$117;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 7834
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 7835
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 7836
    .local v0, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$117$3;->this$1:Lorg/telegram/messenger/MessagesController$117;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$117;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 7838
    .end local v0    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_0
    return-void
.end method
