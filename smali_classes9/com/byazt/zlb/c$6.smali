.class public Lcom/byazt/zlb/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x238,
        0x66
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zlb/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/zlb/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/zlb/c;

.field public final synthetic ve:Lcom/byazt/zlb/c$c;


# direct methods
.method public constructor <init>(Lcom/byazt/zlb/c;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/zlb/c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zlb/c$6;->uj:Lcom/byazt/zlb/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/zlb/c$6;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/zlb/c$6;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/zlb/c$6;->ve:Lcom/byazt/zlb/c$c;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/zlb/c$6;->uj:Lcom/byazt/zlb/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zlb/c;->tt(Lcom/byazt/zlb/c;)Lcom/byazt/zlb/c$tt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/zlb/c$6;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/zlb/c$6;->tt:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/byazt/zlb/c$6;->ve:Lcom/byazt/zlb/c$c;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/zlb/c$tt;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/zlb/c$c;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
