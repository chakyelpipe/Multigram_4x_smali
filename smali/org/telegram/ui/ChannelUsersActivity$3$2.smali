.class Lorg/telegram/ui/ChannelUsersActivity$3$2;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

.field final synthetic val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$3;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$3;

    .prologue
    .line 440
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$2;->this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$3$2;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;)V
    .locals 1
    .param p1, "rights"    # I
    .param p2, "rightsAdmin"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .param p3, "rightsBanned"    # Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .prologue
    .line 443
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3$2;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3$2;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3$2;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 447
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3$2;->this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelUsersActivity;->removeSelfFromStack()V

    .line 448
    return-void
.end method
