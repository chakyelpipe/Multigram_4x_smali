.class public Lorg/telegram/tgnet/TLRPC$ChatFull;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatFull"
.end annotation


# instance fields
.field public about:Ljava/lang/String;

.field public admins_count:I

.field public banned_count:I

.field public bot_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$BotInfo;",
            ">;"
        }
    .end annotation
.end field

.field public can_set_username:Z

.field public can_view_participants:Z

.field public chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

.field public flags:I

.field public id:I

.field public kicked_count:I

.field public migrated_from_chat_id:I

.field public migrated_from_max_id:I

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

.field public participants_count:I

.field public pinned_msg_id:I

.field public read_inbox_max_id:I

.field public read_outbox_max_id:I

.field public unread_count:I

.field public unread_important_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5394
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 5400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 5418
    const/4 v0, 0x0

    .line 5419
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    sparse-switch p1, :sswitch_data_0

    .line 5439
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 5440
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChatFull"

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

    .line 5421
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;-><init>()V

    .line 5422
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    goto :goto_0

    .line 5424
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull;-><init>()V

    .line 5425
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    goto :goto_0

    .line 5427
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;-><init>()V

    .line 5428
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    goto :goto_0

    .line 5430
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer67;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer67;-><init>()V

    .line 5431
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    goto :goto_0

    .line 5433
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;-><init>()V

    .line 5434
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    goto :goto_0

    .line 5436
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatFull;
    goto :goto_0

    .line 5442
    :cond_0
    if-eqz v0, :cond_1

    .line 5443
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChatFull;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 5445
    :cond_1
    return-object v0

    .line 5419
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a34a0a9 -> :sswitch_1
        -0x68411a9e -> :sswitch_2
        -0x61cbe221 -> :sswitch_4
        -0x3c2aaed1 -> :sswitch_3
        -0x54ce55d -> :sswitch_5
        0x2e02a614 -> :sswitch_0
    .end sparse-switch
.end method
