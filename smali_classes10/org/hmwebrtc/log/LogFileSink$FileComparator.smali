.class public Lorg/hmwebrtc/log/LogFileSink$FileComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/log/LogFileSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/hmwebrtc/log/LogFileSink$FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/log/LogFileSink;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/log/LogFileSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/log/LogFileSink$FileComparator;->this$0:Lorg/hmwebrtc/log/LogFileSink;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/hmwebrtc/log/LogFileSink$FileInfo;

    check-cast p2, Lorg/hmwebrtc/log/LogFileSink$FileInfo;

    invoke-virtual {p0, p1, p2}, Lorg/hmwebrtc/log/LogFileSink$FileComparator;->compare(Lorg/hmwebrtc/log/LogFileSink$FileInfo;Lorg/hmwebrtc/log/LogFileSink$FileInfo;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/hmwebrtc/log/LogFileSink$FileInfo;Lorg/hmwebrtc/log/LogFileSink$FileInfo;)I
    .locals 3

    .line 2
    iget-wide v0, p1, Lorg/hmwebrtc/log/LogFileSink$FileInfo;->lastModified:J

    iget-wide p1, p2, Lorg/hmwebrtc/log/LogFileSink$FileInfo;->lastModified:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
