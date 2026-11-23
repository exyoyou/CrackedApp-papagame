.class Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field final synthetic c:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;


# direct methods
.method public constructor <init>(Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->c:Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetTraceRoute$c;->b:I

    .line 2
    .line 3
    return-void
.end method
