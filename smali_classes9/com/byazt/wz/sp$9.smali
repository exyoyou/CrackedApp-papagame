.class public Lcom/byazt/wz/sp$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/su/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x905
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/wz/sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/sp$9;->c:Lcom/byazt/wz/sp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/sp$9;->c:Lcom/byazt/wz/sp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wz/sp;->i(Lcom/byazt/wz/sp;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/byazt/rgb/c;->tt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/wz/sp$9;->c:Lcom/byazt/wz/sp;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/byazt/wz/sp;->tt:Lcom/byazt/aas/c$tt;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->c(Lcom/byazt/aas/c$tt;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/sp$9;->c:Lcom/byazt/wz/sp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wz/sp;->i(Lcom/byazt/wz/sp;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {v0, v1}, Lcom/byazt/rgb/c;->tt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
