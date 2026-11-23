.class Lcom/googlecode/mp4parser/authoring/tracks/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field final synthetic k:Lcom/googlecode/mp4parser/authoring/tracks/n;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->k:Lcom/googlecode/mp4parser/authoring/tracks/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->e:I

    .line 2
    .line 3
    mul-int/lit16 v0, v0, 0x90

    .line 4
    .line 5
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->g:I

    .line 6
    .line 7
    div-int/2addr v0, v1

    .line 8
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n$a;->h:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    return v0
.end method
