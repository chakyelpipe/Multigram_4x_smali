.class public interface abstract Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"


# static fields
.field public static final DEFAULT:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;
.end method

.method public abstract supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)Z
.end method
