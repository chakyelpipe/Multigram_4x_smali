.class public Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelAdminLogEventAction"
.end annotation


# instance fields
.field public message:Lorg/telegram/tgnet/TLRPC$Message;

.field public new_message:Lorg/telegram/tgnet/TLRPC$Message;

.field public new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field public new_photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

.field public participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field public prev_message:Lorg/telegram/tgnet/TLRPC$Message;

.field public prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field public prev_photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

.field public prev_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18219
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 18231
    const/4 v0, 0x0

    .line 18232
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    sparse-switch p1, :sswitch_data_0

    .line 18276
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 18277
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChannelAdminLogEventAction"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18234
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleInvites;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleInvites;-><init>()V

    .line 18235
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18237
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionUpdatePinned;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionUpdatePinned;-><init>()V

    .line 18238
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18240
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSignatures;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSignatures;-><init>()V

    .line 18241
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18243
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;-><init>()V

    .line 18244
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18246
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditMessage;-><init>()V

    .line 18247
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18249
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;-><init>()V

    .line 18250
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18252
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeTitle;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeTitle;-><init>()V

    .line 18253
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18255
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteMessage;-><init>()V

    .line 18256
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18258
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantInvite;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantInvite;-><init>()V

    .line 18259
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18261
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantLeave;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantLeave;-><init>()V

    .line 18262
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18264
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsername;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsername;-><init>()V

    .line 18265
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18267
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangePhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangePhoto;-><init>()V

    .line 18268
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18270
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleBan;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleBan;-><init>()V

    .line 18271
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18273
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoin;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoin;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
    goto :goto_0

    .line 18279
    :cond_0
    if-eqz v0, :cond_1

    .line 18280
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 18282
    :cond_1
    return-object v0

    .line 18232
    nop

    :sswitch_data_0
    .sparse-switch
        -0x47d0aa3d -> :sswitch_b
        -0x2a9898f0 -> :sswitch_5
        -0x1ce3cb28 -> :sswitch_8
        -0x1927c282 -> :sswitch_c
        -0x192047db -> :sswitch_6
        -0x1617d3e8 -> :sswitch_1
        -0x768880e -> :sswitch_9
        0x183040d3 -> :sswitch_d
        0x1b7907ae -> :sswitch_0
        0x26ae0971 -> :sswitch_2
        0x42e047bb -> :sswitch_7
        0x55188a2e -> :sswitch_3
        0x6a4afc38 -> :sswitch_a
        0x709b2405 -> :sswitch_4
    .end sparse-switch
.end method
