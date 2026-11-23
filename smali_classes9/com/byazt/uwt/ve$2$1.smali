.class public Lcom/byazt/uwt/ve$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ao/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x111,
        0x3ce
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uwt/ve$2;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Lcom/byazt/uwt/ve$2;


# direct methods
.method public constructor <init>(Lcom/byazt/uwt/ve$2;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uwt/ve$2$1;->tt:Lcom/byazt/uwt/ve$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/uwt/ve$2$1;->c:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/uwt/ve$2$1;->tt:Lcom/byazt/uwt/ve$2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/uwt/ve$2;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, v0, Lcom/byazt/uwt/ve$2;->ve:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/uwt/ve$2$1;->c:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/byazt/uwt/ve$2;->uj:Ljava/lang/StringBuffer;

    .line 10
    .line 11
    invoke-static {v1, v2, v3, v0}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/util/Map;Ljava/lang/StringBuffer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
