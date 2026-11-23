.class public Lcom/join/mgps/event/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4


# instance fields
.field private a:I

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eType"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x64

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/join/mgps/event/b;->b:J

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lcom/join/mgps/event/b;->c:I

    .line 10
    .line 11
    iput p1, p0, Lcom/join/mgps/event/b;->a:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/b;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/b;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/event/b;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/event/b;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public e(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/event/b;->b:J

    .line 2
    .line 3
    return-void
.end method
