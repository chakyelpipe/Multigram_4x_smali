.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputMediaPhoto"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public id:Lorg/telegram/tgnet/TLRPC$InputPhoto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12158
    const v0, -0x7e05c8c6

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12157
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12163
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->flags:I

    .line 12164
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 12165
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->caption:Ljava/lang/String;

    .line 12166
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12167
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->ttl_seconds:I

    .line 12169
    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12172
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12173
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12174
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12175
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 12176
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12177
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->ttl_seconds:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12179
    :cond_0
    return-void
.end method
