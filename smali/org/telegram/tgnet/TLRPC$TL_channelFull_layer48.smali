.class public Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;
.super Lorg/telegram/tgnet/TLRPC$TL_channelFull;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelFull_layer48"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5772
    const v0, -0x61cbe221

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5771
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5776
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    .line 5777
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->can_view_participants:Z

    .line 5778
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->id:I

    .line 5779
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->about:Ljava/lang/String;

    .line 5780
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 5781
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->participants_count:I

    .line 5783
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 5784
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->admins_count:I

    .line 5786
    :cond_1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 5787
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->kicked_count:I

    .line 5789
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->read_inbox_max_id:I

    .line 5790
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->unread_count:I

    .line 5791
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->unread_important_count:I

    .line 5792
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5793
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 5794
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 5795
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 5796
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_4

    .line 5797
    if-eqz p2, :cond_5

    .line 5798
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_3
    move v4, v6

    .line 5777
    goto/16 :goto_0

    .line 5802
    .restart local v2    # "magic":I
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 5803
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_7

    .line 5804
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v3

    .line 5805
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    if-nez v3, :cond_6

    .line 5816
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_5
    :goto_2
    return-void

    .line 5808
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_6
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5803
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5810
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_7
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_8

    .line 5811
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->migrated_from_chat_id:I

    .line 5813
    :cond_8
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_5

    .line 5814
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->migrated_from_max_id:I

    goto :goto_2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5819
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5820
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->can_view_participants:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    or-int/lit8 v2, v2, 0x8

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    .line 5821
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5822
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5823
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->about:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5824
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5825
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->participants_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5827
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5828
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->admins_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5830
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 5831
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->kicked_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5833
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->read_inbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5834
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->unread_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5835
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->unread_important_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5836
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5837
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5838
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5839
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5840
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5841
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5842
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 5843
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$BotInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5842
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5820
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v2, v2, -0x9

    goto :goto_0

    .line 5845
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    .line 5846
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->migrated_from_chat_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5848
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 5849
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;->migrated_from_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5851
    :cond_6
    return-void
.end method
