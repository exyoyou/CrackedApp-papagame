.class public Lcom/byazt/uwt/uj$1;
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
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uwt/uj;->c(Ljava/lang/String;Lcom/bytedance/pangle/plugin/Plugin;Ljava/lang/StringBuilder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/uwt/uj;

.field public final synthetic c:Lcom/bytedance/pangle/plugin/Plugin;

.field public final synthetic n:Ljava/lang/StringBuilder;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Ljava/io/File;

.field public final synthetic ve:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/byazt/uwt/uj;Lcom/bytedance/pangle/plugin/Plugin;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uwt/uj$1;->a:Lcom/byazt/uwt/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/uwt/uj$1;->c:Lcom/bytedance/pangle/plugin/Plugin;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/uwt/uj$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/uwt/uj$1;->ve:Ljava/io/File;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/uwt/uj$1;->uj:Ljava/io/File;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/uwt/uj$1;->n:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/uwt/uj$1;->a:Lcom/byazt/uwt/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/uwt/uj$1;->c:Lcom/bytedance/pangle/plugin/Plugin;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/uwt/uj$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/uwt/uj$1;->ve:Ljava/io/File;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/uwt/uj$1;->uj:Ljava/io/File;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/byazt/uwt/uj$1;->n:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/byazt/uwt/uj;->c(Lcom/byazt/uwt/uj;Lcom/bytedance/pangle/plugin/Plugin;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/StringBuilder;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
