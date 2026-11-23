.class public Lfc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:D

.field public c:J

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Lorg/json/JSONObject;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfc/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 7
    .line 8
    iput-wide v0, p0, Lfc/a;->b:D

    .line 9
    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    iput-wide v0, p0, Lfc/a;->c:J

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lfc/a;->d:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lfc/a;->e:I

    .line 19
    .line 20
    iput v0, p0, Lfc/a;->f:I

    .line 21
    .line 22
    iput v0, p0, Lfc/a;->h:I

    .line 23
    .line 24
    iput-object p1, p0, Lfc/a;->g:Lorg/json/JSONObject;

    .line 25
    .line 26
    iput-object p1, p0, Lfc/a;->i:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method
