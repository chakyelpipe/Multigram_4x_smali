.class public Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageFwdHeader"
.end annotation


# instance fields
.field public channel_id:I

.field public channel_post:I

.field public date:I

.field public flags:I

.field public from_id:I

.field public post_author:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19789
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 19798
    const/4 v0, 0x0

    .line 19799
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    sparse-switch p1, :sswitch_data_0

    .line 19807
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 19808
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in MessageFwdHeader"

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

    .line 19801
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    .line 19802
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    goto :goto_0

    .line 19804
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;
    goto :goto_0

    .line 19810
    :cond_0
    if-eqz v0, :cond_1

    .line 19811
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 19813
    :cond_1
    return-object v0

    .line 19799
    nop

    :sswitch_data_0
    .sparse-switch
        -0x38792235 -> :sswitch_1
        -0x5200b54 -> :sswitch_0
    .end sparse-switch
.end method
