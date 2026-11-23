.class public Lpc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lpc/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lpc/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/c;->b:Lpc/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/c;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lpc/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/c;->b:Lpc/e;

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/c;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method
