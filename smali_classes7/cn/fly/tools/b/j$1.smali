.class Lcn/fly/tools/b/j$1;
.super Lcn/fly/tools/utils/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/b/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tools/b/j;


# direct methods
.method constructor <init>(Lcn/fly/tools/b/j;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/b/j$1;->a:Lcn/fly/tools/b/j;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcn/fly/tools/utils/j;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tools/b/j$1;->a:Lcn/fly/tools/b/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/tools/b/j;->a(Lcn/fly/tools/b/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
