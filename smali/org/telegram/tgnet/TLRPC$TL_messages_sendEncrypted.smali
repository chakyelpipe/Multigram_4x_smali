.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_sendEncrypted"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public data:Lorg/telegram/tgnet/NativeByteBuffer;

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

.field public random_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28480
    const v0, -0x5688988d

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28479
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
    .line 28487
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;

    move-result-object v0

    return-object v0
.end method

.method public freeResources()V
    .locals 1

    .prologue
    .line 28499
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_0

    .line 28500
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 28501
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 28503
    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 28491
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28492
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28493
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 28494
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V

    .line 28495
    return-void
.end method
