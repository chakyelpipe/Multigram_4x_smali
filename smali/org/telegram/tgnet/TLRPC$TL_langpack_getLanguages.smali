.class public Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguages;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_langpack_getLanguages"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26190
    const v0, -0x7ff02a83

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguages;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26189
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 26194
    new-instance v3, Lorg/telegram/tgnet/TLRPC$Vector;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$Vector;-><init>()V

    .line 26195
    .local v3, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 26196
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 26197
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p3}, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;

    move-result-object v1

    .line 26198
    .local v1, "object":Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;
    if-nez v1, :cond_1

    .line 26203
    .end local v1    # "object":Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;
    :cond_0
    return-object v3

    .line 26201
    .restart local v1    # "object":Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;
    :cond_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26207
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguages;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26208
    return-void
.end method
