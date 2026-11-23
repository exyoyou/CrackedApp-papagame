.class Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/sevenzipjbinding/SevenZipException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackTraceWriter"
.end annotation


# instance fields
.field private indexInMessage:I

.field private final message:Ljava/lang/String;

.field private newlineFound:Z

.field private writer:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->newlineFound:Z

    .line 6
    .line 7
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->writer:Ljava/io/PrintWriter;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->message:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->writer:Ljava/io/PrintWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->writer:Ljava/io/PrintWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public write([CII)V
    .locals 6

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    if-ge v0, p3, :cond_4

    .line 4
    .line 5
    aget-char v1, p1, v0

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/16 v2, 0xd

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-boolean v1, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->newlineFound:Z

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->message:Ljava/lang/String;

    .line 22
    .line 23
    iget v2, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->indexInMessage:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v2, 0x20

    .line 30
    .line 31
    if-ne v1, v2, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->writer:Ljava/io/PrintWriter;

    .line 34
    .line 35
    const-string v2, "| "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->writer:Ljava/io/PrintWriter;

    .line 42
    .line 43
    iget-object v4, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->message:Ljava/lang/String;

    .line 44
    .line 45
    iget v5, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->indexInMessage:I

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->write(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->writer:Ljava/io/PrintWriter;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(I)V

    .line 57
    .line 58
    .line 59
    :goto_1
    iget v1, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->indexInMessage:I

    .line 60
    .line 61
    add-int/2addr v1, v3

    .line 62
    iput v1, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->indexInMessage:I

    .line 63
    .line 64
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->message:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-lt v1, v2, :cond_2

    .line 71
    .line 72
    iput p2, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->indexInMessage:I

    .line 73
    .line 74
    :cond_2
    iput-boolean p2, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->newlineFound:Z

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    :goto_2
    iput-boolean v3, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->newlineFound:Z

    .line 78
    .line 79
    :goto_3
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;->writer:Ljava/io/PrintWriter;

    .line 80
    .line 81
    aget-char v2, p1, v0

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(I)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    return-void
.end method
