.class public Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;
.super Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_botInlineMessageMediaGeo"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6625
    const v0, 0x3a8fd8b8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6624
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 6629
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;->flags:I

    .line 6630
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$GeoPoint;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 6631
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 6632
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 6634
    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6637
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6638
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6639
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$GeoPoint;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6640
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 6641
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6643
    :cond_0
    return-void
.end method
