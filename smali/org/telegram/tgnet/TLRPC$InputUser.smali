.class public Lorg/telegram/tgnet/TLRPC$InputUser;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputUser"
.end annotation


# instance fields
.field public access_hash:J

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6350
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputUser;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 6355
    const/4 v0, 0x0

    .line 6356
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    sparse-switch p1, :sswitch_data_0

    .line 6367
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 6368
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in InputUser"

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

    .line 6358
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    .line 6359
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    goto :goto_0

    .line 6361
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;-><init>()V

    .line 6362
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    goto :goto_0

    .line 6364
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUser;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    goto :goto_0

    .line 6370
    :cond_0
    if-eqz v0, :cond_1

    .line 6371
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputUser;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 6373
    :cond_1
    return-object v0

    .line 6356
    nop

    :sswitch_data_0
    .sparse-switch
        -0x46777931 -> :sswitch_0
        -0x27d6d7ea -> :sswitch_2
        -0x83e4ec1 -> :sswitch_1
    .end sparse-switch
.end method
