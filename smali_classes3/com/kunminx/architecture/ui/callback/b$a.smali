.class public Lcom/kunminx/architecture/ui/callback/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunminx/architecture/ui/callback/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z


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
.method public a()Lcom/kunminx/architecture/ui/callback/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kunminx/architecture/ui/callback/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kunminx/architecture/ui/callback/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kunminx/architecture/ui/callback/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/kunminx/architecture/ui/callback/b$a;->a:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/kunminx/architecture/ui/callback/a;->b:Z

    .line 9
    .line 10
    return-object v0
.end method

.method public b(Z)Lcom/kunminx/architecture/ui/callback/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/kunminx/architecture/ui/callback/b$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/kunminx/architecture/ui/callback/b$a;->a:Z

    .line 2
    .line 3
    return-object p0
.end method
