.class public Lcom/byazt/ix/uj$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ix/uj$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x68d,
        0x80
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ix/uj$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ix/uj$3;


# direct methods
.method public constructor <init>(Lcom/byazt/ix/uj$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ix/uj$3$1;->c:Lcom/byazt/ix/uj$3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/psp/n;->uj()Lcom/byazt/psp/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/byazt/ix/uj$3$1;->c:Lcom/byazt/ix/uj$3;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/byazt/ix/uj$3;->n:Lcom/byazt/ix/uj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ix/uj;->ve(Lcom/byazt/ix/uj;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/byazt/psp/n;->c(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
