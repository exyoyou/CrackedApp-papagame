.class Lcom/MApplication$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MApplication$g;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/MApplication$g;


# direct methods
.method constructor <init>(Lcom/MApplication$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/MApplication$g$a;->b:Lcom/MApplication$g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/MApplication$g$a;->b:Lcom/MApplication$g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/MApplication$g;->a:Lcom/MApplication;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/MApplication;->M()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
