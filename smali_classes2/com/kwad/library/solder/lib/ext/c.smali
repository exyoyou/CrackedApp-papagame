.class public final Lcom/kwad/library/solder/lib/ext/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/library/solder/lib/ext/c$a;
    }
.end annotation


# instance fields
.field private final aEM:I

.field private final aFa:Ljava/lang/String;

.field private final aFb:Ljava/lang/String;

.field private final aFc:Ljava/lang/String;

.field private final aFd:Ljava/lang/String;

.field private final aFe:Ljava/lang/String;

.field private final aFf:Ljava/lang/String;

.field private final aFg:Ljava/lang/String;

.field private final aFh:Z

.field private final aFi:Z

.field private final aFj:Z

.field private aFk:Ljava/util/concurrent/ExecutorService;

.field private aFl:Ljava/lang/String;

.field private aFm:[B

.field private aFn:Z

.field private aFo:I


# direct methods
.method private constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BZZLjava/util/concurrent/ExecutorService;I)V
    .locals 2

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p10

    .line 3
    iput v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aEM:I

    move-object v1, p4

    .line 4
    iput-object v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFa:Ljava/lang/String;

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFb:Ljava/lang/String;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFc:Ljava/lang/String;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFd:Ljava/lang/String;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFe:Ljava/lang/String;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFf:Ljava/lang/String;

    move-object v1, p3

    .line 10
    iput-object v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFg:Ljava/lang/String;

    move v1, p1

    .line 11
    iput-boolean v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFh:Z

    move v1, p2

    .line 12
    iput-boolean v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFi:Z

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFl:Ljava/lang/String;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFm:[B

    move v1, p13

    .line 15
    iput-boolean v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFn:Z

    move/from16 v1, p14

    .line 16
    iput-boolean v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFj:Z

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFk:Ljava/util/concurrent/ExecutorService;

    move/from16 v1, p16

    .line 18
    iput v1, v0, Lcom/kwad/library/solder/lib/ext/c;->aFo:I

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BZZLjava/util/concurrent/ExecutorService;IB)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p16}, Lcom/kwad/library/solder/lib/ext/c;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BZZLjava/util/concurrent/ExecutorService;I)V

    return-void
.end method


# virtual methods
.method public final El()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/library/solder/lib/ext/c;->aFo:I

    .line 2
    .line 3
    return v0
.end method

.method public final Em()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/library/solder/lib/ext/c;->aFa:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final En()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/library/solder/lib/ext/c;->aFb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Eo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/library/solder/lib/ext/c;->aFc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Ep()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/library/solder/lib/ext/c;->aFd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Eq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/library/solder/lib/ext/c;->aFe:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Er()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/library/solder/lib/ext/c;->aFf:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Es()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/library/solder/lib/ext/c;->aFi:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Et()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/library/solder/lib/ext/c;->aFj:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Eu()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/library/solder/lib/ext/c;->aFk:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/library/solder/lib/ext/c;->aEM:I

    .line 2
    .line 3
    return v0
.end method
