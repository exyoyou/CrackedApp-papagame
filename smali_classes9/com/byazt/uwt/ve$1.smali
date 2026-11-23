.class public final Lcom/byazt/uwt/ve$1;
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
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uwt/ve;->c(Ljava/io/File;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/io/File;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Ljava/lang/StringBuffer;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uwt/ve$1;->c:Ljava/io/File;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/uwt/ve$1;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/uwt/ve$1;->ve:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/uwt/ve$1;->uj:Ljava/lang/StringBuffer;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
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
    iget-object v0, p0, Lcom/byazt/uwt/ve$1;->c:Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/uwt/ve$1;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/byazt/uwt/ve$1;->ve:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/uwt/ve$1;->uj:Ljava/lang/StringBuffer;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/uwt/ve;->c(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
