.class public Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateLangPack"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13817
    const v0, 0x56022f4d

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13816
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 13821
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;->difference:Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    .line 13822
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13825
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13826
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;->difference:Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 13827
    return-void
.end method
