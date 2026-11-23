.class Lorg/hmwebrtc/log/LogFileSink$FileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/log/LogFileSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field lastModified:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/log/LogFileSink$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogFileSink$FileInfo;-><init>()V

    return-void
.end method
