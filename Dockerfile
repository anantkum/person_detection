# Base on the openvino/ubuntu18_dev
FROM openvino/ubuntu18_dev

# copy files includes object_detection script, IR file, src image
ADD object_detection_sample_ssd.py /home/openvino/
ADD person-detection-0200.xml /home/openvino/
ADD person-detection-0200.bin /home/openvino/
ADD person.png /home/openvino/
ADD script.sh /home/openvino/


# cd working directory
WORKDIR /home/openvino/


# Run the app
ENTRYPOINT /bin/bash script.sh
# CMD ["/bin/bash", "script.sh"]
# ENTRYPOINT ["/bin/bash", "/home/openvino/Desktop/script.sh"]

# CMD ["object_detection_sample_ssd.py", "-m", "person-detection-0200.xml", "-i", "person.png"]
# CMD ["/usr/bin/python3", "object_detection_sample_ssd.py", "-m", "person-detection-0200.xml", "-i", "person.png"]
# CMD /bin/bash -c "source /opt/intel/openvino_2021/bin/setupvars.sh" && /usr/bin/python3 object_detection_sample_ssd.py -m person-detection-0200.xml -i person.png
# CMD /bin/bash -c "source /opt/intel/openvino_2021/bin/setupvars.sh" && python3 object_detection_sample_ssd.py -m person-detection-0200.xml -i person.png
