.class final Lorg/telegram/messenger/MessagesController$28;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->setUserAdminRole(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$chatId:I

.field final synthetic val$isMegagroup:Z

.field final synthetic val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;


# direct methods
.method constructor <init>(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;Z)V
    .locals 0

    .prologue
    .line 1822
    iput p1, p0, Lorg/telegram/messenger/MessagesController$28;->val$chatId:I

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$28;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$28;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesController$28;->val$isMegagroup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1825
    if-nez p2, :cond_0

    .line 1826
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1827
    new-instance v0, Lorg/telegram/messenger/MessagesController$28$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$28$1;-><init>(Lorg/telegram/messenger/MessagesController$28;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1841
    :goto_0
    return-void

    .line 1834
    .restart local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$28$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/MessagesController$28$2;-><init>(Lorg/telegram/messenger/MessagesController$28;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
