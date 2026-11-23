.class public Lcom/googlecode/mp4parser/authoring/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:D

.field private c:J

.field private d:D


# direct methods
.method public constructor <init>(JJDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p3, p0, Lcom/googlecode/mp4parser/authoring/c;->a:J

    .line 5
    .line 6
    iput-wide p7, p0, Lcom/googlecode/mp4parser/authoring/c;->b:D

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/c;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/googlecode/mp4parser/authoring/c;->d:D

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/c;->d:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/c;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/c;->b:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/c;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
