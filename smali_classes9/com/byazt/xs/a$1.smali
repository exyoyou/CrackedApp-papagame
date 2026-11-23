.class public Lcom/byazt/xs/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/zm$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xs/a;->c(Lcom/byazt/dq/uj$tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dq/uj$tt;

.field public final synthetic tt:Lcom/byazt/xs/a;


# direct methods
.method public constructor <init>(Lcom/byazt/xs/a;Lcom/byazt/dq/uj$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xs/a$1;->tt:Lcom/byazt/xs/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/xs/a$1;->c:Lcom/byazt/dq/uj$tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xs/a$1;->c:Lcom/byazt/dq/uj$tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/dq/uj$tt;->c(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
