.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getBotCallbackAnswer"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public data:[B

.field public flags:I

.field public game:Z

.field public msg_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24703
    const v0, -0x7ef56014

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24702
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 24712
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 24716
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24717
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->game:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    .line 24718
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24719
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24720
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24721
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 24722
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->data:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 24724
    :cond_0
    return-void

    .line 24717
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method
