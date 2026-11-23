.class public Lcom/byazt/ogz/sl$3;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a6,
        0x596
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ogz/sl;->my(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/ogz/sl;


# direct methods
.method public constructor <init>(Lcom/byazt/ogz/sl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ogz/sl$3;->tt:Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/ogz/sl$3;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ogz/sl$3;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ql/c;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
