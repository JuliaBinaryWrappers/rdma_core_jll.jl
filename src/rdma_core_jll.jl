# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule rdma_core_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("rdma_core")
JLLWrappers.@generate_main_file("rdma_core", UUID("69dc3629-5c98-505f-8bcd-225213cebe70"))
end  # module rdma_core_jll
