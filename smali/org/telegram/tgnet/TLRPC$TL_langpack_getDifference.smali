.class public Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_langpack_getDifference"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public from_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26175
    const v0, 0xb2e4d7d

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26174
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
    .line 26180
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26184
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26185
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->from_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26186
    return-void
.end method
