.class Lcn/fly/commons/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/commons/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/a;->f()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[[B

.field final synthetic b:Lcn/fly/commons/a;


# direct methods
.method constructor <init>(Lcn/fly/commons/a;[[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/a$2;->b:Lcn/fly/commons/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/commons/a$2;->a:[[B

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tools/utils/FileLocker;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/fly/commons/a$2;->b:Lcn/fly/commons/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcn/fly/commons/a;->d(Lcn/fly/commons/a;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcn/fly/commons/a$2;->a:[[B

    .line 8
    .line 9
    invoke-static {p1}, Lcn/fly/tools/utils/ResHelper;->readFromFileNoCompress(Ljava/io/File;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x0

    .line 14
    aput-object p1, v0, v1

    .line 15
    .line 16
    return v1
.end method
