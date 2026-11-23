.class public Lcom/byazt/mt/c$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ac,
        0x40b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/mt/c$3;->c(Lcom/byazt/aq/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/aq/x;

.field public final synthetic tt:Lcom/byazt/mt/c$3;


# direct methods
.method public constructor <init>(Lcom/byazt/mt/c$3;Lcom/byazt/aq/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/mt/c$3$1;->tt:Lcom/byazt/mt/c$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/mt/c$3$1;->c:Lcom/byazt/aq/x;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/mt/c$3$1;->tt:Lcom/byazt/mt/c$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/mt/c$3$1;->c:Lcom/byazt/aq/x;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/byazt/mt/c;->ve(Lcom/byazt/mt/c;Lcom/byazt/aq/x;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
