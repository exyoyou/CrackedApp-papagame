.class Lcn/aigestudio/downloader/bizs/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:J

.field volatile e:Z

.field volatile f:Z

.field volatile g:Z

.field volatile h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "baseUrl",
            "start",
            "end"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/j;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, Lcn/aigestudio/downloader/bizs/j;->d:J

    .line 11
    .line 12
    return-void
.end method
