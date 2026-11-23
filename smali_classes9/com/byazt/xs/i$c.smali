.class public Lcom/byazt/xs/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nd/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0x40
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/xs/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public c:Lcom/byazt/sz/rh$c;

.field public final synthetic tt:Lcom/byazt/xs/i;

.field public uj:Lcom/byazt/sz/rh$tt;

.field public ve:Lcom/byazt/sz/m;


# direct methods
.method public constructor <init>(Lcom/byazt/xs/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xs/i$c;->tt:Lcom/byazt/xs/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/byazt/xs/i$c;)Lcom/byazt/sz/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xs/i$c;->ve:Lcom/byazt/sz/m;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/byazt/xs/i$c;->tt:Lcom/byazt/xs/i;

    iget-object v1, p0, Lcom/byazt/xs/i$c;->ve:Lcom/byazt/sz/m;

    iget-object v2, p0, Lcom/byazt/xs/i$c;->uj:Lcom/byazt/sz/rh$tt;

    iget-object v3, p0, Lcom/byazt/xs/i$c;->c:Lcom/byazt/sz/rh$c;

    invoke-static {v0, v1, v2, v3}, Lcom/byazt/xs/i;->c(Lcom/byazt/xs/i;Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    return-void
.end method

.method public c(Lcom/byazt/sz/m;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/xs/i$c;->ve:Lcom/byazt/sz/m;

    return-void
.end method

.method public c(Lcom/byazt/sz/rh$c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/xs/i$c;->c:Lcom/byazt/sz/rh$c;

    return-void
.end method

.method public c(Lcom/byazt/sz/rh$tt;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/xs/i$c;->uj:Lcom/byazt/sz/rh$tt;

    return-void
.end method
